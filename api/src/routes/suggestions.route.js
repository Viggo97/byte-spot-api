import express from 'express';
import {getSuggestions} from '../controllers/suggestions.controller.js';

const suggestionsRouter = express.Router();
suggestionsRouter.get('/', getSuggestions);

export default suggestionsRouter;
