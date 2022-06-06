%% Taken from NetVLAD and Updated by Usman
function ds= m_yael_nn(v, q, k, distype)
    assert( nargin<4 || distype==2 );
    if nargin<3, k= 1; end
    assert(k<=size(v,2));
        
    for iVec= 1:size(q,2)
        ds= sum( bsxfun(@minus, v, q(:,iVec)).^2, 1 );
       
    end
end
