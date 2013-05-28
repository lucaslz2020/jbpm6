<div class="form-content">
    <input type="hidden" name="taskId" value="${task.id}"/>
        <h3>费用申请单</h3>
        <#if task.taskData.status = 'Ready'>	
           <h4>获取该任务并执行</h4>    
        </#if>
        
	    <#if task.taskData.status = 'Reserved'>	
             <h4>启动申请任务</h4>    
		     <div class="form-row clearfix">
		        <label>用户ID</label>
		        <input type="text" name="userId" id="userId" value="${userId}"/>
		     </div>
		     <div class="form-row clearfix">
		            <label>申请时间</label>
		            <input type="text" name="date" id="date" value="${date}"/>
		     </div>	
        </#if>  
	    <#if task.taskData.status = 'InProgress'>
            <h3>完成任务</h3>
            <div class="form-row clearfix">
                <label>描述</label>
                <input type="text" name="description" id="description" />
             </div>
	    </#if>      
</div>
