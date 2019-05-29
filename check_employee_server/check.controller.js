class CheckController {
    checkEmployee = (req, res, next) => {
      
      const query = req.body
      console.log(query)
      res.json({message: `${query.employee} has work today`})
    }
}

export default CheckController;