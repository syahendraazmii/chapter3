using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelSelector : MonoBehaviour
{
    public void LoadLevel(string levelName)
    {
        SceneManager.LoadScene(levelName);
    }

    public void LoadLevelByIndex(int levelIndex)
    {
        SceneManager.LoadScene(levelIndex);
    }
}
