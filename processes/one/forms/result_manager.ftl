<div class="form-content">
    <input type="hidden" name="taskId" value="${task.id}"/>
        <h3>审批</h3>
        <#if task.taskData.status = 'Ready'>	
           <h4>获取该任务并执行</h4>    
        </#if>
        
	    <#if task.taskData.status = 'Reserved'>	
             <h4>审批</h4>    
		     <div class="form-row clearfix">
		        <label>用户ID</label>
		        <input type="text" name="userId" id="userId" value="${userId}"/>
		     </div>
		     <div class="form-row clearfix">
		            <label>申请时间</label>
		            <input type="text" name="date" id="date" value="${date}"/>
		     </div>	
		       <div class="form-row clearfix">
		            <label>申请内容</label>
		            <input type="text" name="description" id="description" value="${description}"/>
		     </div>	
        </#if>  
	    <#if task.taskData.status = 'InProgress'>
            <h3>完成</h3>
             <div class="form-row clearfix">
	            <label>审批结果</label>
	            <select name="result" id="result">
	              <option value="agree">同意</option>
	              <option value="disAgree">不同意</option>
				</select>
             </div>			
	    </#if>      
</div>
