
#include <stdint.h>
#include <sys/time.h>
#include <stdlib.h>
#pragma once

#define STATISTIC_OPEN

namespace rocksdb{
#ifdef STATISTIC_OPEN
    struct GLOBAL_STATS {
        uint64_t compaction_num;
        

        GLOBAL_STATS(){
            compaction_num = 0;
            
        }
    };
    extern struct GLOBAL_STATS global_stats;
    
#endif

uint64_t get_now_micros();

}