#!/bin/bash

# Restaurar o arquivo original
git checkout Source/items.cpp

# Adicionar os arrays da Gema da Defesa
sed -i '/N_("Oil of Imperviousness")/a \};\\n\\n// Arrays para Gema da Defesa\\nint GemLevels[] = { 5 }; // Nível mínimo do monstro para dropar\\nint GemValues[] = { 3000 }; // Valor da gema\\nitem_misc_id GemMagic[] = {\\n\\tIMISC_GEMDEF,\\n};\\nchar GemNames[1][25] = {\\n\\tN_("Gema da Defesa"),\\n};' Source/items.cpp
