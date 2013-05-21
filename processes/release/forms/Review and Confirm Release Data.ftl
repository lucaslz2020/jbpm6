
        <div class="form-content">
            
            <input type="hidden" name="taskId" value="${task.id}"/>

            <div class="form-row clearfix">
                <label>Selected Files</label>
		
                <input type="text" disabled="true" name="release_name" value="${in_files}" />
                
            </div>
            <div class="form-row clearfix">
                <label>Confirmed Files</label>
                <#if task.taskData.status = 'InProgress'>
		
                  <input type="text" name="out_selected_files" id="out_selected_files" value="${in_files}"/>
                
                </#if>
            </div>
            <div class="form-row clearfix">
                <label>Confirm</label>
                <#if task.taskData.status = 'InProgress'>
                
                  <input type="checkbox" name="out_confirmed" id="out_confirmed" value=""/>
                
                </#if>
            </div>
            <div class="form-row clearfix">
                <label>Due Date</label>
                <#if task.taskData.status = 'InProgress'>
		
                  <input type="date" name="out_dueDate" id="out_dueDate" value=""/>
                
                </#if>
            </div>

                      
              
        </div>

       
    