<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<div class="form-content">
			<input type=""hidden" name="taskId" value="${task.id}" />
			<h3>申请最终结果通知</h3>
		  	<#if task.taskData.status = 'Ready'>	
		    	<h4>为了执行该任务，你需要获取它</h4>    
		    </#if>  
		    <#if task.taskData.status = 'Reserved'>	
		    	<h4>Start the task to begin with the interview</h4>   
		    	<h4>使用interview开始该任务</h4>   
		      	<div class="form-row clearfix">
		        	<label>用户ID</label>
		        	<input type="text" name="userId" id="userId" value="${userId}"/>
		        	<label>描述</label>
		        	<input type="text" name="description" id="description" value="${description}"/>
		        	<label>申请时间</label>
		        	<input type="text" name="date" id="date" value="${date?date} ${date?time} "/>
		        	<label>申请结果</label>
		        	<input type="text" name="result" id="result" value="${result}"/>
		        	<label>申请原因</label>
		        	<input type="text" name="comment" id="comment" value="${comment}"/>
		        	<label>用户审批结果</label>
		        	<input type="text" name="resultUser" id="resultUser" value="${resultUser}"/>
		        	<label>经理审批结果</label>
		        	<input type="text" name="resultManager" id="resultManager" value="${resultManager}"/>
		     	</div> 
		   </#if>  
		</div>
	</body>
</html>
