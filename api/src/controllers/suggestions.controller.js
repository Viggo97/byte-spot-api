import * as db from '../db/postgresql.js'

export const getSuggestions = async (req, res) => {
    const query = req.query.search;
    if (!query) {
        return res.json([]);
    }

    try {
        const searchPattern = `%${query}%`;
        const result = await db.query(`
          (select name from technologies where name ilike $1 limit $2)
          union all
          (select name from locations where name ilike $1 limit $2)
          union all
          (select name from companies where name ilike $1 limit $2)
        `, [searchPattern, 4]);
        return res.json(result.rows.map(r => r.name));
    } catch (error) {
        console.log(error);
        return res.status(501).json({message: 'Server error'});
    }
}