#include "global.h"
#include "decompress.h"
#include "heap.h"

// 43AF4
void Decompress(void *dest, void *src)
{
    void *heapPtr;

    if (((u32*)src)[0] & 0x80000000)
    {
        heapPtr = thunk_HeapAlloc(((u32*)src)[1] >> 8, 0);
        HuffUnComp(src + 4, heapPtr);
        LZ77UnCompWram(heapPtr, dest);
        thunk_HeapFree(heapPtr);
    }
    else
    {
        LZ77UnCompWram(src + 4, dest);
    }
}

// 43B34
void DecompressDma(void *src, void *dest, u16 size)
{
    void *heapPtr;

    heapPtr = thunk_HeapAlloc(((u32*)src)[0] & 0x7FFFFFFF, 0);
    Decompress(heapPtr, src);
    DmaCopy16Wait(3, heapPtr + 4, dest, size);
    thunk_HeapFree(heapPtr);
}

// 43B80
void *DecompressAlloc(void *src)
{
    void *heapPtr;

    heapPtr = thunk_HeapAlloc(((u32*)src)[0] & 0x7FFFFFFF, 0);
    Decompress(heapPtr, src);
    return heapPtr;
}
