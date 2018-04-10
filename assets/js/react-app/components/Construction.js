import React from "react";

/**
 * Simple functional component to denote app is under development.
 */
 const Construction = () => {
   return(
     <div className="under-construction text-center">
       <p className="lead">
         <em className="fa fa-wrench"></em>&nbsp;
         <span className="under-construction-text text-danger">Under Construction</span>&nbsp;
         <em className="fa fa-wrench"></em>
       </p>
       <p className="text-info">Please check back soon!</p>
     </div>
   );
 }

 export default Construction;
