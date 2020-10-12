import { DEFAULT_ACTION } from "./actionType";
const initState = {
    name: "",
    email: "",
    userId: "",
}

const reducers = (state = initState, action) => {
    switch (action.type) {
        case DEFAULT_ACTION:
            return {
                ...state, 
                name : action.payload.name,
                userId : action.payload.id,
                email : action.payload.email,
            }
        default:
            return state
    }
}

export default reducers