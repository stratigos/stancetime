import React from "react";
import Stance from "./Stance";

const StancesList = ({ stances }) => {
  return(
    <div className="stances-list-container d-flex justify-content-around">
      {stances.map( (stanceRecord) => {
        return(<Stance key={stanceRecord.stance.id} stance={stanceRecord.stance} />);
      })}
    </div>
  );
};

export default StancesList;
