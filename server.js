
const express=require("express");
const app=express();
app.use(express.json());
app.use("/test.người thuê", require("./routes/postRoutes"));
app.use((er,req,res,next)=>{
    console.log(er.stack);
    console.log(err.name);
    console.log(err.code);
    res.status(500).json({
        message:"Something went rely wrong",
    });
});
const PORT=prpcess.env.PORT||3306;
app.listen(PORT,()=>console.log(`Server running on PORT ${PORT}`));