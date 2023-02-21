function fn(){


    var config ={
        name : "Fredy",
        baseUrl : 'https://pesa-backend-production.up.railway.app/',
        authorization:'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYzgwYTdiZTU2MTY1Y2E2NGI0YTZiMiIsImlhdCI6MTY3NTgxNjY3MywiZXhwIjoxNjc1OTAzMDczfQ.2T4M5pyvxl4JAu0KlHFN7BPkIHXb-dmHUKy5t5gxoOQ',
    }
    var result = karate.callSingle('classpath:/Login.feature', config);
    config.authorization = 'Bearer '+ result.response.token; // assuming you did 'def token'

/*
    var env = karate.env
    karate.log('the value of env is ', env)
    if(env =='qa'){
        config.baseUrl = 'https://reqres.in/api/qa'
    }
    else if(env =='dev'){
        config.baseUrl = 'https://reqres.in/api/dev'
    }
    else{
        config.baseUrl = 'https://reqres.in/api/default'
    }*/



    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000  )
    return config;
}