#include <cstdio>

/*
 * Test whether header files are installed correctly.
 */

/* GATB */
#include "gatb/gatb_core.hpp"

/* gtest */
#include "gtest/gtest.h"

/* htslib */
#include "htslib/sam.h"

/* klib */
#include "kmath.h"

/* Parasail */
#include "parasail.h"
#include "parasail/matrix_lookup.h"

/* SDSL */
#include <sdsl/suffix_arrays.hpp>

/* Seqan */
#include "seqan/basic.h"
#include "seqan/sequence.h"
#include "seqan/stream.h"

/* SSW */
#include "ssw.h"

/* zlib */
#include "zlib.h"

int main(){

    /* GATB*/
    const char* seq = "CATTGATAGTGGATGGT";
    Data data ((char*)seq);
    Kmer<>::ModelDirect model (5);
    Kmer<>::ModelDirect::Iterator it (model);
    it.setData (data);

    /* Parasail */
    const char *s1 = "asdf";
    const char *s2 = "asdf";
    int s1Len = (int)strlen(s1);
    int s2Len = (int)strlen(s2);
    parasail_result_t *result = NULL;
    const parasail_matrix_t *matrix = NULL;

    result = parasail_sw(s1, s1Len, s2, s2Len, -11, -1, &parasail_blosum62);
    parasail_result_free(result);

    /* SDSL */
    sdsl::csa_wt<> fm_index;

    /* Seqan */
    seqan::StringSet<seqan::DnaString> stringSet;
    seqan::DnaString str0 = "TATA";
    seqan::DnaString str1 = "CGCG";
    appendValue(stringSet, str0);
    appendValue(stringSet, str1);

    return 0;
}


