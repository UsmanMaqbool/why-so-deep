function res_im = m_net_box(i,feat_im,res_im,bboxes)

wyd1 = bboxes(1);
wyd2 = bboxes(1)+bboxes(3);
hyt1 = bboxes(2);
hyt2 = bboxes(2)+bboxes(4);
[hyt,wyd,cc] = size(gather(feat_im));
if wyd1 == 0
    wyd1 = 1;
end
if hyt1 == 0
    hyt1 = 1;
end
if wyd2 > wyd
    wyd2 = wyd;
end
if hyt2 > hyt
    hyt2 = hyt;
end
if bboxes(3) < 2 && wyd2 > wyd
    wyd1 = wyd1-2;
end
if bboxes(4) < 2 && hyt2 > hyt
    hyt1 = hyt1-2;
end


%fprintf('%i %i %i %i - %i %i \n',wyd1, wyd2,hyt1, hyt2, wyd2-wyd1,hyt2-hyt1);

res_im(i).x = feat_im(hyt1:hyt2,wyd1:wyd2,:);

end