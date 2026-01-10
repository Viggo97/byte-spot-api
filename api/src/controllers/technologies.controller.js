import * as db from '../db/postgresql.js'

export const getTechnologies = async (req, res) => {
    try {
        const result = await db.query('select * from technologies');
        result.rows = result.rows.map(r => {
            return {
                id: r.id,
                name: r.name,
                icon: r.svg_icon
            }
        })
        return res.json(result.rows);
    } catch (error) {
        console.log(error);
        return res.status(501).json({message: 'Server error'});
    }
}