export OldWorkflowID=$(aws cloudformation list-exports --query "Exports[?Name==\`WorkflowID\`].Value" --no-paginate --output text)
echo OldWorkflowID: "${OldWorkflowID}"
echo CIRCLE_WORKFLOW_ID "${CIRCLE_WORKFLOW_ID:0:7}"        
export STACKS=$(aws cloudformation list-stacks --query "StackSummaries[*].StackName" --stack-status-filter CREATE_COMPLETE --no-paginate --output text)
echo Stack names: "${STACKS[@]}" 