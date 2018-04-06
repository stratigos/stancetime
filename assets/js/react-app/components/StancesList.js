import React from "react";
import Stance from "./Stance";

const StancesList = ({ stances }) => {
  return(
    <div className="crafter-list-container">
      {stances.map( (stanceRecord) => {
        console.log("stance", stanceRecord);
        return(<Stance key={stanceRecord.stance.id} stance={stanceRecord.stance} />);
      })}
    </div>
  );
};

export default StancesList;
