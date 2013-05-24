<div class="form-content">
	<input type=""hidden" name="taskId" value="${task.id}" />
	<h3>申请提醒</h3>
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
     	</div> 
   </#if>  
	<#if task.taskData.status = 'InProgress'>
		<h4>提醒，请求尚未完成，请审查</h4>
	</#if>   
</div>






