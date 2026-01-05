import express from 'express';
import {getOffers} from '../controllers/offers.controller.js';

const offersRouter = express.Router();
offersRouter.get('/', getOffers);

export default offersRouter;
