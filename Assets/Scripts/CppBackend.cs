using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

public class CppBackend : MonoBehaviour
{
    [DllImport("backend")]
    private static extern int SimpleReturnFun();
}
