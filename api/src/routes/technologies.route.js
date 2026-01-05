import express from 'express';
import {getTechnologies} from '../controllers/technologies.controller.js';

const technologiesRouter = express.Router();
technologiesRouter.get('/', getTechnologies);

export default technologiesRouter;
