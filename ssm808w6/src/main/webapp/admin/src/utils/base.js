const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm808w6/",
            name: "ssm808w6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm808w6/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于微信小程序的校园生活助手"
        } 
    }
}
export default base
