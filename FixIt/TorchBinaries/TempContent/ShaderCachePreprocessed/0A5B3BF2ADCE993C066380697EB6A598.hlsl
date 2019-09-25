#line 1 ""


AppendStructuredBuffer < uint > g_DeadListToAddTo : register ( u1 ) ; 
RWStructuredBuffer < uint > g_SkippedParticleCount : register ( u2 ) ; 

[ numthreads ( 1 , 1 , 1 ) ] 
void __compute_shader ( ) 
{ 
    int counter ; 
    do 
    { 
        counter = g_SkippedParticleCount . DecrementCounter ( ) ; 
        if ( counter >= 0 ) 
        g_DeadListToAddTo . Append ( 0 ) ; 
    } while ( counter >= 0 ) ; 
} 
