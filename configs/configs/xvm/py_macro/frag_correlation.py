import xvm_battle.python.fragCorrelationPanel as panel

@xvm.export('xvm.frag_correlation.ally', deterministic=False)
def ally():
    return panel.teams_totalhp[0]

@xvm.export('xvm.frag_correlation.enemy', deterministic=False)
def enemy():
    return panel.teams_totalhp[1]

@xvm.export('xvm.frag_correlation.sign', deterministic=False)
def sign():
    return '&lt;' if panel.total_hp_sign == '<' else '&gt;' if panel.total_hp_sign == '>' else panel.total_hp_sign

maxRatio = 95
minRatio = 65
    
@xvm.export('xvm.frag_correlation.color_hp', deterministic=False)
def color_hp():
    if panel.teams_totalhp[0] < panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[0] / panel.teams_totalhp[1] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['bad'], ratio)
    elif panel.teams_totalhp[0] > panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[1] / panel.teams_totalhp[0] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['good'], ratio)
    else:
        color_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['neutral'], 1)
    return color_hp