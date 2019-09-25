#line 1 ""


RWBuffer < uint > g_SimulationArgs : register ( u3 ) ; 

uint align ( uint value , uint alignment ) 
{ 
    return ( value + ( alignment - 1 ) ) & ~ ( alignment - 1 ) ; 
} 

[ numthreads ( 1 , 1 , 1 ) ] 
void __compute_shader ( ) 
{ 
    g_SimulationArgs [ 0 ] = align ( g_SimulationArgs [ 0 ] , 256 ) / 256 ; 
} 
