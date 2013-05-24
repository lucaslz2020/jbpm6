<div class="form-content">
	<input type=""hidden" name="taskId" value="${task.id}" />
	<h3>申请</h3>
  	<#if task.taskData.status = 'Ready'>	
    	<h4>为了执行该任务，你需要获取它</h4>    
    </#if>  
    <#if task.taskData.status = 'Reserved'>	
    	<h4>使用interview开始该任务</h4>   
      	<div class="form-row clearfix">
        	<label>用户ID</label>
        	<input type="text" name="userId" id="userId" value="${userId}"/>
        	<label>描述</label>
        	<input type="text" name="description" id="description" value="${description}"/>
        	<label>申请时间</label>
        	<input type="text" name="date" id="date" value="${date?date} ${date?time} "/>
     	</div> 
   </#if>  
	<#if task.taskData.status = 'InProgress'>
		 <div class="form-row clearfix">
             <label>申请原因</label>
             <textarea cols="50" rows="5" name="comment"></textarea>
         </div>	
		<div class="form-row clearfix">
			<label>审批意见</label>
			<select name="outcome" id="outcome">
				  <option value="Accept">确定</option>
				  <option value="Reject">取消</option>
			</select>
		</div>	
	</#if>   
</div>