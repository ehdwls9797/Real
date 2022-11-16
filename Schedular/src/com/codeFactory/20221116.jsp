<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function startAsync(age) {
  return new Promise((resolve, reject) => {
    if (age > 20) resolve(`${age} success`);    
    else reject(new Error(`${age} is not over 20`));
  });
}

setTimeout(() => {
  const promise1 = startAsync(25);
  promise1
    .then((value) => {
      console.log(value);
    })
    .catch((error) => {
      console.error(error);
    });
  const promise2 = startAsync(15);
  promise2
    .then((value) => {
      console.log(value);
    })
    .catch((error) => {
      console.error(error);
    });
}, 1000);
</script>
<body>

js (fetch) -> ajax 같은느낌인데
장점 : 내장 라이브러리라서 딱히 안건들여도됨. promise 기반이라 순차적진행
ajax 기능에 (promise, async/await) 기능들이 추가되어있는 느낌s

단점 : 익스에서 사용못하는것 같음.

실무에서는 써봐야알겠지만... 예전에 ajax로 js불러올때 당연히 js는 위부터 순차적으로 탈줄알았는데
a b c 순으로 js를 태웠지만 b c a 순서로 읽어들여서 값이 꼬여서 잘못나왔던걸 못찾구 굉장히 이러지러 헤맸던 기억이 난다.
그때는 야매로 setTimeout 함수를 이용해서 대충 걸리는시간파악후 기다렸다가 하게했는데 너무 비효율적이니....
이번에 배운 promise나 async/await 기능을 이용해서 사용해보면 좋을것같다.
실제로 사용할때 한번더 공부해보자

https://elvanov.com/2597 참조

</body>
</html>