(new Object(){
	public int getScore(String score){
		if(${input$entity} instanceof PlayerEntity) {
			Scoreboard _sc = ((PlayerEntity)${input$entity}).getScoreboard();
			ScoreObjective _so = _sc.getNullableObjective(score);
			if (_so != null) {
				ScoreboardPlayerScore _scr = _sc.getObjective(((PlayerEntity)${input$entity}).getEntityName(), _so);
				return _scr.getScore();
			}
		}
		return 0;
	}
}.getScore(${input$score}))