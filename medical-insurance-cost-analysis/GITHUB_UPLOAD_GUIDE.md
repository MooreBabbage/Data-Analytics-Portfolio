# GitHub upload guide (web browser)

1. Go to https://github.com/new and sign in.
2. Set **Repository name** to `medical-insurance-cost-analysis` and a description such as “Python EDA of medical insurance charges by age, BMI, and smoking status.”
3. Select **Public** only after checking school requirements and the permissions of any shared materials. Select **Private** otherwise.
4. Leave **Initialize this repository with a README** unchecked because a README is already included.
5. Click **Create repository**.
6. Extract the provided project ZIP on your computer. Open the inner `medical-insurance-cost-analysis` folder.
7. On the new repository page, choose **uploading an existing file** (or **Add file → Upload files**). Drag `README.md`, `requirements.txt`, `.gitignore`, `GITHUB_UPLOAD_GUIDE.md`, `notebooks/medical_insurance_analysis.ipynb`, and `data/.gitkeep`. Uploading folders by dragging the project folder works in many desktop browsers, but verify the resulting folder paths in GitHub before committing. Hidden dotfiles may be invisible on macOS; use Finder’s Command+Shift+. to reveal them.
8. Enter commit message: `Add consolidated Python medical insurance EDA project` and commit/propose the changes as the UI directs.
9. Confirm that the notebook appears under `notebooks/` and the README renders on the repository homepage. Do **not** upload your local `insurance.csv` unless distribution is permitted.
10. In repo **About** settings, add topics: `python`, `pandas`, `data-analysis`, `exploratory-data-analysis`, `seaborn`.

For the cleanest public preview, run all notebook cells locally **after downloading the dataset**, save the resulting plots to the notebook, then upload the executed notebook; do not claim it was run if you have not executed it.

Official instructions: https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository
