import * as db from '../db/postgresql.js'

export const getOffers = async (req, res) => {
    const queryParams = req.query;

    try {
        const result = await db.query(`
        SELECT offers.id,
               offers.title,
               to_json(offers.employment_type) as "employmentType",
               to_json(offers.work_mode) as "workMode",
               to_json(offers.seniority) as "seniority",
               offers.salary_min as "salaryMin",
               offers.salary_max as "salaryMax",
               offers.salary_fixed as "salaryFixed",
               COALESCE(
                       (SELECT json_agg(json_build_object('id', locations.id, 'name', locations.name))
                        FROM offers_locations
                        JOIN locations ON offers_locations.location_id = locations.id
                        WHERE offers_locations.offer_id = offers.id),
                       '[]'
               )  AS locations,
               COALESCE(
                       (SELECT json_agg(json_build_object('id', technologies.id, 'name', technologies.name))
                        FROM offers_technologies
                        JOIN technologies ON offers_technologies.technology_id = technologies.id
                        WHERE offers_technologies.offer_id = offers.id),
                       '[]'
               ) AS technologies
        FROM offers
        `);
        console.log(result.rows)
        const results = filterResults(result.rows, queryParams);
        return res.json(results);
    } catch (error) {
        console.log(error);
        return res.status(501).json({message: 'Server error'});
    }
}

const filterResults = (rows, params) => {
    const salaryMin = params.salaryMin;
    const salaryMax = params.salaryMax;
    const workMode = params.workMode ? Array.isArray(params.workMode) ? params.workMode : [params.workMode] : [];
    const employmentType = params.employmentType ? Array.isArray(params.employmentType) ? params.employmentType : [params.employmentType] : [];
    const seniority = params.seniority ? Array.isArray(params.seniority) ? params.seniority : [params.seniority] : [];
    const locations = params.location ? Array.isArray(params.location) ? params.location : [params.location] : [];
    const technologies = params.technology ? Array.isArray(params.technology) ? params.technology : [params.technology] : [];
    const search = params.search;

    const conditions = [];

    if (salaryMin) {
        conditions.push((row) => row.salaryMin >= salaryMin);
    }

    if (salaryMax) {
        conditions.push((row) => row.salaryMax <= salaryMax);
    }

    if (workMode.length) {
        conditions.push((row) => row.workMode.some((e => workMode.includes(e))))
    }

    if (employmentType.length) {
        conditions.push((row) => row.employmentType.some((e => employmentType.includes(e))))
    }

    if (seniority.length) {
        conditions.push((row) => row.seniority.some((e => seniority.includes(e))))
    }

    if (locations.length) {
        conditions.push((row) => row.locations.some((e => locations.includes(e.id.toString()))))
    }

    if (technologies.length) {
        conditions.push((row) => row.technologies.some((e => technologies.includes(e.id.toString()))))
    }

    if (search) {
        conditions.push((row) => row.title.toLowerCase().includes(search.toLowerCase()));
    }

    const results = rows.filter(row => {
        return conditions.every(c => c(row));
    })


    return results;
}