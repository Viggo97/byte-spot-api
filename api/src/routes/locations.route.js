import express from 'express';
import {getLocations} from '../controllers/locations.controller.js';

const locationsRouter = express.Router();
locationsRouter.get('/', getLocations);

export default locationsRouter;
