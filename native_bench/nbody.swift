import Foundation
let steps = Int(CommandLine.arguments[1])!
let n = 5
var px = [Double](repeating: 0, count: n), py = px, pz = px
var vx = px, vy = px, vz = px, mass = px
let pi = 3.141592653589793, solar = 4 * pi * pi, dpy = 365.24
let bodies: [[Double]] = [
 [0,0,0,0,0,0,1],
 [4.84143144246472090,-1.16032004402742839,-0.103622044471123109,
  0.00166007664274403694,0.00769901118419740425,-0.0000690460016972063023,0.000954791938424326609],
 [8.34336671824457987,4.12479856412430479,-0.403523417114321381,
  -0.00276742510726862411,0.00499852801234917238,0.0000230417297573763929,0.000285885980666130812],
 [12.8943695621391310,-15.1111514016986312,-0.223307578892655734,
  0.00296460137564761618,0.00237847173959480950,-0.0000296589568540237556,0.0000436624404335156298],
 [15.3796971148509165,-25.9193146099879641,0.179258772950371181,
  0.00268067772490389322,0.00162824170038242295,-0.0000951592254519715870,0.0000515138902046611451]]
for i in 0..<n {
  px[i]=bodies[i][0]; py[i]=bodies[i][1]; pz[i]=bodies[i][2]
  vx[i]=bodies[i][3]*dpy; vy[i]=bodies[i][4]*dpy; vz[i]=bodies[i][5]*dpy
  mass[i]=bodies[i][6]*solar
}
var mpx=0.0, mpy=0.0, mpz=0.0
for i in 0..<n { mpx += vx[i]*mass[i]; mpy += vy[i]*mass[i]; mpz += vz[i]*mass[i] }
vx[0] = -mpx/solar; vy[0] = -mpy/solar; vz[0] = -mpz/solar
let dt = 0.01
for _ in 0..<steps {
  for i in 0..<n {
    for j in (i+1)..<n {
      let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
      let d2 = dx*dx+dy*dy+dz*dz
      let mag = dt / (d2 * d2.squareRoot())
      vx[i] -= dx*mass[j]*mag; vy[i] -= dy*mass[j]*mag; vz[i] -= dz*mass[j]*mag
      vx[j] += dx*mass[i]*mag; vy[j] += dy*mass[i]*mag; vz[j] += dz*mass[i]*mag
    }
  }
  for i in 0..<n { px[i] += dt*vx[i]; py[i] += dt*vy[i]; pz[i] += dt*vz[i] }
}
var e = 0.0
for i in 0..<n {
  e += 0.5*mass[i]*(vx[i]*vx[i]+vy[i]*vy[i]+vz[i]*vz[i])
  for j in (i+1)..<n {
    let dx = px[i]-px[j], dy = py[i]-py[j], dz = pz[i]-pz[j]
    e -= mass[i]*mass[j] / (dx*dx+dy*dy+dz*dz).squareRoot()
  }
}
print(String(format: "%.9f", e))
