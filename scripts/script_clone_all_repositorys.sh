#!/bin/bash

# Check if user is logged in to GitHub CLI
echo "Checking if the github cli tool gh is logged in..."

if gh auth status &> /dev/null; then
    echo "Check succesful.."
else
    echo "User is not logged in to GitHub CLI. Please log in."
    exit 1
fi

echo "creating directory's..."
# layer 1 folders and school with all subdirectorys
mkdir -p $HOME/repos/01-archive
mkdir -p $HOME/repos/02-school/{year1,year2,year3,year4}/{semester1,semester2,semester3,semester4}
mkdir -p $HOME/repos/03-personal
mkdir -p $HOME/repos/04-internet

echo "Cloning repository's..."
# school repos spanning multiple semesters in the placed in the last semster of that project
gh repo clone ti-projecten/TI01-PRJ04-1         $HOME/repos/02-school/year1/semester1/TI01-PRJ04-1
gh repo clone ti-projecten/TI02-LLC01           $HOME/repos/02-school/year1/semester2/TI02-LLC01
gh repo clone ti-projecten/TI02-PRJ04-2         $HOME/repos/02-school/year1/semester2/TI02-PRJ04-2
gh repo clone ti-projecten/TI03-HIS04-1         $HOME/repos/02-school/year1/semester3/TI03-HIS04-1
gh repo clone hr-repos/TI-PROJECT3-4            $HOME/repos/02-school/year1/semester3/TI-PROJECT3-4
gh repo clone hr-repos/TINPRO03-3               $HOME/repos/02-school/year1/semester3/TINPRO03-3
gh repo clone hr-repos/project-34-landserver    $HOME/repos/02-school/year1/semester3/project-34-landserver
gh repo clone hr-repos/TI-TINPRO03-4            $HOME/repos/02-school/year1/semester4/TI-TINPRO03-4
gh repo clone hr-repos/TINPRO025A               $HOME/repos/02-school/year2/semester1/TINPRO025A
gh repo clone hr-repos/TINPRO045B               $HOME/repos/02-school/year2/semester1/TINPRO045B
gh repo clone hr-repos/TINPRJ0456               $HOME/repos/02-school/year2/semester2/TINPRJ0456
gh repo clone hr-repos/TINCOS01                 $HOME/repos/02-school/year2/semester3/TINCOS01 
gh repo clone hr-repos/TINPRO01-7               $HOME/repos/02-school/year2/semester3/TINPRO01-7
gh repo clone hr-repos/TINPRJ0478               $HOME/repos/02-school/year2/semester3/TINPRJ0478
gh repo clone hr-repos/TINNES                   $HOME/repos/02-school/year2/semester3/TINNES

# personal
gh repo clone thomas-321/PrivateWebsite         $HOME/repos/03-personal/PrivateWebsite
gh repo clone thomas-321/CodeCollection         $HOME/repos/03-personal/CodeCollection
gh repo clone thomas-321/My-Obsidian-vault      $HOME/repos/03-personal/My-Obsidian-vault
gh repo clone thomas-321/dotfiles               $HOME/repos/03-personal/dotfiles
gh repo clone thomas-321/aoc                    $HOME/repos/03-personal/aoc 
gh repo clone thomas-321/thomas-321             $HOME/repos/03-personal/thomas-321 

echo "Cloned all repository's into $HOME/repos"
