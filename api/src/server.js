import express from 'express';
import cors from 'cors';

import technologiesRouter from './routes/technologies.route.js';
import locationsRouter from './routes/locations.route.js';
import suggestionsRouter from './routes/suggestions.route.js';
import offersRouter from './routes/offers.route.js';

const app = express();

app.use(cors());
app.use(express.json());

app.use('/technologies', technologiesRouter);
app.use('/locations', locationsRouter);
app.use('/suggestions', suggestionsRouter);
app.use('/offers', offersRouter);

app.listen(process.env.APP_PORT);
