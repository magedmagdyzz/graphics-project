<!DOCTYPE html>
<html>
	<head>
		<title>Galaxy simulation.js app</title>
		<style>
			body { margin: 0; }
		</style>
	</head>
	<body>
	     <body onkeydown="KeyPressed(event)">

		<script src="lib/three.min.js"></script>
		<script src="lib/OrbitControls.js"></script>
		<script>


			const scene = new THREE.Scene();
			const camera = new THREE.PerspectiveCamera( 100, window.innerWidth / window.innerHeight, 0.1, 1000 );
			const sceneElements = {

			sceneGraph : null,
			camera     : null,
			control    : null,
			renderer   : null,
			};
			const geometry = new THREE.SphereGeometry(0.1,50,50);
			const material = new THREE.MeshBasicMaterial({color: 0xACACAC});

			var R=500;
			for (var i = 0;i<1000;){
				const stars = new THREE.Mesh( geometry, material);
				stars.position.x = ( Math.random() -0.5) * R*2 * Math.random();
				stars.position.y = ( Math.random() - 0.5) * R*2 * Math.random() ;
				stars.position.z = ( Math.random() - 0.5) * R*2 * Math.random() ;

				stars.rotation.x = Math.random();
				stars.rotation.y = Math.random();
				stars.rotation.z = Math.random();

				var distance_squared = stars.position.x*stars.position.x + stars.position.y*stars.position.y + stars.position.z*stars.position.z;

				if(distance_squared <= R*R) {
					scene.add(stars);
					++i;
				}
			}

				angle = 0.01;//speed
		      stopAt =((Math.PI/angle) * 2);
		      console.log("angle:: ",angle)


			sceneElements.sceneGraph = new THREE.Scene();
			sceneElements.camera = camera;
			 sceneElements.control = new THREE.OrbitControls( camera );
			 sceneElements.control.screenSpacePanning = true;
			 sceneElements.control.enableKeys = false;


			const renderer = new THREE.WebGLRenderer();
			renderer.setSize( window.innerWidth, window.innerHeight );
			document.body.appendChild( renderer.domElement );

			//sun
			const loader = new THREE.TextureLoader();
			const geometry0 = new THREE.SphereGeometry(1,32,32);
			const material0 = new THREE.MeshBasicMaterial({
            map: loader.load('img/sun.jpg'),
            });

			const Sphere = new THREE.Mesh( geometry0, material0 );
			scene.add( Sphere );
			Sphere.translateX(0.0).translateY(0.0).translateZ(0.0);


			//Mercury


			var animateOnsun = function()
		{
			mercury.translateX(+150);
			mercury.rotateY(angle);
			mercury.translateX(-150);
		};
            requestAnimationFrame(animateOnsun);
			const geometry2 = new THREE.SphereGeometry(0.3,32,32);
			const material2 = new THREE.MeshBasicMaterial({
            map: loader.load('img/mecury.png') ,side: THREE.DoubleSide,
            });
			const mercury = new THREE.Mesh(geometry2,material2);
			scene.add(mercury);
			mercury.translateX(-2.1).translateY(-2.1).translateZ(0);

			//mercury moon

			const geometry111 = new THREE.SphereGeometry(0.1,32,32);
			const material111 = new THREE.MeshBasicMaterial({
            map: loader.load('img/moonBump.jpg'),
            });

			const moonM = new THREE.Mesh( geometry111, material111 );
			scene.add( moonM );
			moonM.translateX(-2).translateY(-2).translateZ(0.9);




			//venus


			var animateOnsun = function()
		{
			venus.translateX(+150);
			venus.rotateY(angle);
			venus.translateX(-150);

		};
            requestAnimationFrame(animateOnsun);
			const geometry3 = new THREE.SphereGeometry(0.8,32,32);
			const material3 = new THREE.MeshBasicMaterial({
            map: loader.load('img/venuss.png'),
            });
			const venus = new THREE.Mesh(geometry3,material3);
			scene.add(venus);
            venus.translateX(-2).translateY(2).translateZ(-6);

			//venus moon

			const geometry112 = new THREE.SphereGeometry(0.3,32,32);
			const material112 = new THREE.MeshBasicMaterial({
            map: loader.load('img/moonBump.jpg'),
            });

			const moonV = new THREE.Mesh( geometry112, material112 );
			scene.add( moonV );
			moonV.translateX(-1).translateY(1.9).translateZ(-6);




			//Earth


			var animateOnsun = function()
		{
			earth.translateX(+150);
			earth.rotateY(angle);
			earth.translateX(-150);
		};


           requestAnimationFrame(animateOnsun);
			const Spheregeometry1 = new THREE.SphereGeometry(0.4,32,32);
			const Spherematerial1 = new THREE.MeshBasicMaterial({
            map: loader.load('img/earthh.png'),
            });
			const earth = new THREE.Mesh(Spheregeometry1,Spherematerial1);
			scene.add(earth);
			earth.translateX(2.0).translateY(2.0).translateZ(-2.0);


			//moon

			const geometry11 = new THREE.SphereGeometry(0.2,32,32);
			const material11 = new THREE.MeshBasicMaterial({
            map: loader.load('img/moonBump.jpg'),
            });
            const moon = new THREE.Mesh( geometry11, material11 );
			scene.add( moon );
			moon.translateX(1.99).translateY(1.99).translateZ(-1.9);

			//Mars
			const geometry4 = new THREE.SphereGeometry(0.5,32,32);
			const material4 = new THREE.MeshBasicMaterial({
            map: loader.load('img/marss.png'),
            });
			const mars = new THREE.Mesh(geometry4,material4);
			scene.add(mars);
			mars.translateX(2.0).translateY(2.0).translateZ(-6.0);


			const geometry113 = new THREE.SphereGeometry(0.1,32,32);
			const material113 = new THREE.MeshBasicMaterial({
            map: loader.load('img/moonBump.jpg'),
            });

			const moonMA = new THREE.Mesh( geometry113, material113 );
			scene.add( moonMA );
			moonMA.translateX(1.99).translateY(1.99).translateZ(-5.9);





			//jupitar

			var animateOnsun = function()
		{
			jupitar.translateX(+150);
			jupitar.rotateY(angle);
			jupitar.translateX(-150);




		};
        requestAnimationFrame(animateOnsun);

			const geometry5 = new THREE.SphereGeometry(0.6,32,32);
			const material5	= new THREE.MeshBasicMaterial({
            map: loader.load('img/jupiter.png'),
            });
			const jupitar = new THREE.Mesh(geometry5,material5);
			scene.add(jupitar);
			jupitar.translateX(8).translateY(5).translateZ(-10);


			//Saturn
			var animateOnsun = function()
		{
			saturn.translateX(+150);
			saturn.rotateY(angle);
			saturn.translateX(-150);




		};
        requestAnimationFrame(animateOnsun);

			const geometry6 = new THREE.SphereGeometry(0.7,32,32);
			const material6= new THREE.MeshBasicMaterial({
            map: loader.load('img/sat.png'),
            });
			const saturn = new THREE.Mesh(geometry6,material6);
			scene.add(saturn);
			saturn.translateX(9).translateY(7).translateZ(-10);

			//uranus
		//	var animateOnsun = function()
		{
		//	uranus.translateX(+150);
		//	uranus.rotateY(angle);
			//uranus.translateX(-150);


		};
        requestAnimationFrame(animateOnsun);

			const geometry7 = new THREE.SphereGeometry(0.4,32,32);
			const material7= new THREE.MeshBasicMaterial({
            map: loader.load('img/uranuss.png'),
            });
			const uranus = new THREE.Mesh(geometry7,material7);
			scene.add(uranus);
			uranus.translateX(6.0).translateY(10.0).translateZ(-9);


			//Neptune
			var animateOnsun = function()
		{
			neptune.translateX(+150);
			neptune.rotateY(angle);
			neptune.translateX(-150);


		};
        requestAnimationFrame(animateOnsun);

			const geometry8 = new THREE.SphereGeometry(0.5,32,32);
			const material8= new THREE.MeshBasicMaterial({
            map: loader.load('img/neptunee.png'),
            });

			const neptune = new THREE.Mesh(geometry8,material8);
			scene.add(neptune);
			neptune.translateX(11.0).translateY(6.0).translateZ(-11);

			//pluto

			const geometry9 = new THREE.SphereGeometry(0.4,32,32);
			const material9= new THREE.MeshBasicMaterial({
            map: loader.load('img/pluto.png'),
            });
			const pluto = new THREE.Mesh(geometry9,material9);
			scene.add(pluto);
			pluto.translateX(6.0).translateY(-6.0).translateZ(0);

			function KeyPressed (e)
		{
			event.preventDefault();
			switch(e.keyCode)
			{
				//Enter
				case 13:
				animateOnsun();

				var distance=earth.distanceTo(Sphere);

				earth.position.set(Math.cos(distance),-Math.sin(distance),Math.sin(distance));
				earth.position.set(2,2,-2);




				}
				}

			const animate = function () {
				requestAnimationFrame( animate );

				Sphere.rotation.x += 0.001;
				Sphere.rotation.z += 0.001;



				earth.rotation.x -= 0.01;
				earth.rotation.z-=0.01;
				mercury.rotation.x += 0.001;
				mercury.rotation.y += 0.01;
				venus.rotation.x += 0.01;
				venus.rotation.y +=0.01;
				mars.rotation.x +=0.01;
				mars.rotation.y +=0.01;
				jupitar.rotation.x +=0.01;
				jupitar.rotation.y +=0.01;
				pluto.rotation.x-=0.01;
				pluto.rotation.y-=0.01;
				saturn.rotation.x+=0.01;
				saturn.rotation.y+=0.01;
				neptune.rotation.x += 0.01;
                neptune.rotation.y+= 0.01;
				uranus.rotation.x+= 0.01;
				uranus.rotation.y+=0.01;

				renderer.render( scene, camera );
			};

			{
    const loader = new THREE.TextureLoader();
    const scenetexture = loader.load('img/starss.jpg');
          'img/starss.jpg'
    scene.background = scenetexture;
  }
			function resizeWindow(eventParam) {
			const width = window.innerWidth;
			const height = window.innerHeight;

			sceneElements.camera.aspect = width / height;
			sceneElements.camera.updateProjectionMatrix();

			sceneElements.renderer.setSize(width, height);
			}






			camera.position.z = 5;

			-

         animateOnsun();
			animate();
		</script>
	</body>
</html>
