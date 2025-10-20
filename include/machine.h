/* Some more types for PPD, to make use of its native support for long 
 * pointers, and to promote type checking
 */

#define FAR  far
#define NEAR near

#ifdef __PACIFIC__
typedef FAR VOID   *LPVOID;
typedef FAR LPVOID *LPLPTR;
typedef FAR BYTE   *LPBYTE;
typedef FAR WORD   *LPWORD;
typedef FAR LONG   *LPLONG;
typedef FAR UWORD  *LPUWORD;
#elif defined __WATCOMC__
typedef VOID FAR   *LPVOID;
typedef LPVOID FAR *LPLPTR;
typedef BYTE FAR   *LPBYTE;
typedef WORD FAR   *LPWORD;
typedef LONG FAR   *LPLONG;
typedef UWORD FAR  *LPUWORD;
#else
#define LPVOID LONG
#define LPLPTR LONG
#define LPBYTE LONG
#define LPWORD LONG
#define LPLONG LONG
#define LPUWORD LONG
#endif

#ifdef LARGE_MODEL
#include "lmachine.h"
#else
#include "smachine.h"
#endif

