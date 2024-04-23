#!/bin/bash

echo "creating directory's..."
# layer 1 folders and school with all subdirectorys
mkdir -p $HOME/repos/01-archive
mkdir -p $HOME/repos/02-school/{year1,year2,year3,year4}/{semester1,semester2,semester3,semester4}
mkdir -p $HOME/repos/03-personal
mkdir -p $HOME/repos/04-internet

echo "Cloning repository's..."
# school repos spanning multiple semesters in the placed in the last semster of that project
git clone git@github.com/ti-projecten/TI01-PRJ04-1         $HOME/repos/02-school/year1/semester1/TI01-PRJ04-1
git clone git@github.com/ti-projecten/TI02-LLC01           $HOME/repos/02-school/year1/semester2/TI02-LLC01
git clone git@github.com/ti-projecten/TI02-PRJ04-2         $HOME/repos/02-school/year1/semester2/TI02-PRJ04-2
git clone git@github.com/ti-projecten/TI03-HIS04-1         $HOME/repos/02-school/year1/semester3/TI03-HIS04-1
git clone git@github.com/hr-repos/TI-PROJECT3-4            $HOME/repos/02-school/year1/semester3/TI-PROJECT3-4
git clone git@github.com/hr-repos/TINPRO03-3               $HOME/repos/02-school/year1/semester3/TINPRO03-3
git clone git@github.com/hr-repos/project-34-landserver    $HOME/repos/02-school/year1/semester3/project-34-landserver
git clone git@github.com/hr-repos/TI-TINPRO03-4            $HOME/repos/02-school/year1/semester4/TI-TINPRO03-4
git clone git@github.com/hr-repos/TINPRO025A               $HOME/repos/02-school/year2/semester1/TINPRO025A
git clone git@github.com/hr-repos/TINPRO045B               $HOME/repos/02-school/year2/semester1/TINPRO045B
git clone git@github.com/hr-repos/TINPRJ0456               $HOME/repos/02-school/year2/semester2/TINPRJ0456
git clone git@github.com/hr-repos/TINCOS01                 $HOME/repos/02-school/year2/semester3/TINCOS01 
git clone git@github.com/hr-repos/TINPRO01-7               $HOME/repos/02-school/year2/semester3/TINPRO01-7
git clone git@github.com/hr-repos/TINPRJ0478               $HOME/repos/02-school/year2/semester4/TINPRJ0478
git clone git@github.com/hr-repos/TINNES                   $HOME/repos/02-school/year2/semester3/TINNES
# personal
git clone git@github.com/thomas-321/PrivateWebsite         $HOME/repos/03-personal/PrivateWebsite
git clone git@github.com/thomas-321/CodeCollection         $HOME/repos/03-personal/CodeCollection
git clone git@github.com/thomas-321/My-Obsidian-vault      $HOME/repos/03-personal/My-Obsidian-vault
git clone git@github.com/thomas-321/second-brain           $HOME/repos/03-personal/second-brain
git clone git@github.com/thomas-321/dotfiles               $HOME/repos/03-personal/dotfiles
git clone git@github.com/thomas-321/aoc                    $HOME/repos/03-personal/aoc 
git clone git@github.com/thomas-321/thomas-321             $HOME/repos/03-personal/thomas-321 

echo "Cloned all repository's into $HOME/repos"
