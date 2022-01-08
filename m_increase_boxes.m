function mat_boxes = increase_boxes_wsd(bbx,hyt,wyd)
    bboxes=[];
    gt=[111	98	25	101];

    b_size = size(bbx,1); 
    for ii=1:b_size
         bb=bbx(ii,:);
         square = bb(3)*bb(4);
         if square <2*gt(3)*gt(4)
            bboxes=[bbx;bb];
         end
    end
    
    bbox = []; 

    for k_index = 1:size(bboxes,1)
        if (bboxes(k_index,3)*bboxes(k_index,4))/(hyt*wyd) > 0.35
        bbox = [bbox; bboxes(k_index,:)];
        end
    end
    
    mat_boxes = uint8(bbox/16); 
       % fprintf( '=> %i', length(mat_boxes));
        %size(mat_boxes) (if boxes are less then 50 -> create empty boxes
        while (size(mat_boxes) < 50)
            mat_boxes_add = [0 0 wyd/16-1 hyt/16-1 0]; 
            mat_boxes( end+1, : ) = mat_boxes_add; 
            %size(mat_boxes);
        end
        
end