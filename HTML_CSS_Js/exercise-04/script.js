const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = ({name, designation, company,hobbies}=user) => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    message=name+"is a"+designation+" at "+company+". He likes "
    hobbies.map((hobbie,idx) =>
    {   if (idx ==hobbies.length-2){
            message+=hobbie+" and "
        }
        if (idx == hobbies.length -1 ){
            message+=hobbie
            
        }
        else
            message+=hobbie+","
    })
    console.log(message);
}

printUserProfile()

