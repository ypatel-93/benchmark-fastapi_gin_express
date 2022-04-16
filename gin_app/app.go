package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.New()
	//r.Use(
	//	gin.LoggerWithWriter(gin.DefaultWriter,  "/dev/null"),
	//	gin.Recovery(),
	//)
	r.GET("/test/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"status": 200,
			"message": "success",
		})
	})
	r.Run(":8002") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
