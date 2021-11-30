︠c6fecd86-6ee3-46ce-9cc5-740d4f0fe89es︠
# Interact Taylor Series of $$f(x) = e^x$$
# Explanatory example: Taylor Series – wiki.sagemath.org/interact https://wiki.sagemath.org/interact
x   = SR.var('x')
x0  = 0
f   = e^(x)
p   = plot(f, -20, 20, thickness=2)
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))

@interact
def _(order=slider([0 .. 12])):
  ft = f.taylor(x, x0, order)
  pt = plot(ft, -20, 20, color='green', thickness=2)
  pretty_print(html(r'$f(x)\;=\;%s$' % latex(f)))
  pretty_print(html(r'$\hat{f}(x;%s)\;=\;%s+\mathcal{O}(x^{%s})$' % (x0, latex(ft), order+1)))
  show(dot + p + pt, ymin=-1, ymax=10)
︡a8232efa-a504-4024-9208-d65db3fb8fd7︡{"interact":{"controls":[{"animate":true,"control_type":"slider","default":0,"display_value":true,"label":"order","vals":["0","1","2","3","4","5","6","7","8","9","10","11","12"],"var":"order","width":null}],"flicker":false,"id":"e257579a-8bd0-48f9-adfe-072972b76ce3","layout":[[["order",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}
︠94f09fc5-50cc-4fa4-9757-6aaae4aad687s︠
# Animate  Taylor Series of $$f(x) = e^x$$
# MCS 320: Introduction to Symbolic Computation - Jan Verschelde, Mathematics, U. Illinois at Chicago  –
# http://homepages.math.uic.edu/~jan/mcs320/mcs320notes/lec27.html#
x   = SR.var('x')
x0  = 0
f   = e^(x)
p   = plot(f, -3, 3, thickness=2,legend_label='f(x) = e^x')
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))
ptaylor = [plot(f.taylor(x, x0, order), -3,3, color='green', thickness=2, legend_label= "Taylor " + str(order) +": "+ str(f.taylor(x, x0, order))) for order in range(5)]

frames = [p+dot+ptaylor[int(order/12)] for order in range(60)]
a = animate(frames, ymin=-10, ymax=10)
a.show()
a.save('e_to_x_taylor_animation_1.gif')
︡9aa8e660-7307-4ee9-a75b-835d15164ca1︡{"file":{"filename":"/home/user/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/824/tmp_s1hp_zcw.webm","show":true,"text":null,"url":"/34162f41-7b37-4095-b0d5-2205ba1ddb6a/raw/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/824/tmp_s1hp_zcw.webm"},"once":false}︡{"done":true}
︠b14c9144-d9d8-4d83-bfee-5618694390bfs︠
x   = SR.var('x')
x0  = 0
f   = e^(x)
p   = plot(f, -6, 6, thickness=2,legend_label='f(x) = e^x')
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))
ptaylor = [plot(f.taylor(x, x0, order), -6,6, color='green', thickness=2, legend_label= "Taylor " + str(order) +": "+ str(f.taylor(x, x0, order))) for order in range(5,9)]

frames = [p+dot+ptaylor[int(order/12)] for order in range(48)]
a = animate(frames, ymin=-100, ymax=100)
a.show()
a.save('e_to_x_taylor_animation_2.gif')
︡855f92bd-7cab-4937-a49f-acb4550a1e10︡{"file":{"filename":"/home/user/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/824/tmp_uf0a2cyr.webm","show":true,"text":null,"url":"/34162f41-7b37-4095-b0d5-2205ba1ddb6a/raw/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/824/tmp_uf0a2cyr.webm"},"once":false}︡{"done":true}
︠07926e2c-4010-4893-8ae3-2291d85d17e0︠
# Lecture 27: Animations¶
# MCS 320: Introduction to Symbolic Computation - Jan Verschelde, Mathematics, U. Illinois at Chicago  –
# http://homepages.math.uic.edu/~jan/mcs320/mcs320notes/lec27.html#
︡2f9d1672-b39a-4575-a29b-e830ba250bcc︡
︠ce717854-dc1c-4638-ae09-8945740dbd57s︠
t = var('t')
f = exp(-t^2)*sin(2*pi*t)
plot(f, (t, -2, 2))
︡e377b9ac-5de3-4e1e-99d7-5631f855131a︡{"file":{"filename":"/home/user/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/738/tmp_u97zwrav.svg","show":true,"text":null,"uuid":"58176d8e-4823-4875-a5f4-a703e392df39"},"once":false}︡{"done":true}
︠a9da17ca-e57d-4aa4-bef6-23842f4aed27s︠
frames = [plot(exp(-t^2)*sin(2*k*pi*t), (t, -2, 2)) for k in range(1,11)]
frames[0].show()
animate(frames)
︡7259c19b-9366-4851-ad14-f56e5709fa73︡{"file":{"filename":"/home/user/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/738/tmp_5bqxq55z.svg","show":true,"text":null,"uuid":"190eedbd-8ad7-4564-9eae-695c0630bdbb"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/738/tmp_6s88vfhy.webm","show":true,"text":null,"url":"/34162f41-7b37-4095-b0d5-2205ba1ddb6a/raw/.sage/temp/project-34162f41-7b37-4095-b0d5-2205ba1ddb6a/738/tmp_6s88vfhy.webm"},"once":false}︡{"done":true}
︠d42b0946-ff96-4777-82d2-45b910ab8ba0s︠
a = animate(frames)
g = a[:5].graphics_array(ncols=5)
show(g,figsize=[8,2], axes=False)
︡aa07525f-c512-43f2-bb66-0d6b4f023e44︡{"file":{"filename":"/home/user/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_voma0wba.svg","show":true,"text":null,"uuid":"8fd66fe0-f57f-4f5b-874c-b973f12bb4a5"},"once":false}︡{"done":true}
︠c8e772e0-128a-4284-9c3e-ec74f7193058s︠
a.save('ouranimation.gif')
︡269fd4ef-6d5b-4fb8-aa46-57490eab3868︡{"done":true}
︠f13a0e2e-c8ed-4e1e-8224-56f7b06edbf4sr︠
movingpoints = [point((cos(2*k*pi/10), sin(2*k*pi/10)), \
   color='red', size=50) for k in range(1,11)]
a = animate(movingpoints,xmin=-1,xmax=1,ymin=-1,ymax=1)
a.show(iterations=3)

︡510f7b18-b2da-4bb5-b350-8f85ecdb4a16︡{"file":{"filename":"/home/user/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_o1d15xf0.webm","show":true,"text":null,"url":"/a6c85e17-12ac-4736-87a3-40110ceaa2db/raw/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_o1d15xf0.webm"},"once":false}
︠caf522cb-ea60-4887-a7f0-550ed28bc622︠
a = animate([sin(x + float(k)) for k in srange(0,2*pi,0.7)],2*pi, ymin=-1, ymax=1, figsize=[2,1])
a.show()
a.save('ouranimation1.gif')
︡b1bd4668-3fdf-439a-ba28-9437c68fecdb︡{"file":{"filename":"/home/user/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_eqjqphhc.webm","show":true,"text":null,"url":"/a6c85e17-12ac-4736-87a3-40110ceaa2db/raw/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_eqjqphhc.webm"},"once":false}︡{"done":true}
︠e8ab63cb-05ed-4112-bddb-58a4318b8abb︠

︡23568e38-e7f4-4f51-afcc-0b92c14cbf2e︡{"interact":{"controls":[{"animate":true,"control_type":"slider","default":0,"display_value":true,"label":"order","vals":["1","2","3","4","5","6","7","8","9","10","11","12"],"var":"order","width":null}],"flicker":false,"id":"932791ef-a41f-4882-bfc9-f4d7dcacad28","layout":[[["order",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}
︠feabd561-1ea5-479e-965a-59c4bd539facs︠
x   = SR.var('x')
x0  = 0
f   = e^(x)
p   = plot(f, -10, 10, thickness=2,legend_label='f(x) = e^x')
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))
ptaylor = [plot(f.taylor(x, x0, order), -10,10, color='green', thickness=2, legend_label= "Taylor " + str(order) +": "+ str(f.taylor(x, x0, order))) for order in range(7)]

frames = [p+dot+ptaylor[int(order/4)] for order in range(28)]
a = animate(frames, ymin=-5, ymax=100)
a.show()
a.save('e_to_x_taylor_animation.gif')
︡3626a4b5-ed73-4d74-8ba1-6ef7bc7703b8︡{"file":{"filename":"/home/user/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp__if0zpue.webm","show":true,"text":null,"url":"/a6c85e17-12ac-4736-87a3-40110ceaa2db/raw/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp__if0zpue.webm"},"once":false}︡{"done":true}
︠10813102-11a8-4a2e-83dc-625ad318f9c4s︠
x, y = var('x,y')
frames = [plot3d((1-k/20)*x + k/20*y, (x,-1,1), (y,-1,1)) \
    for k in range(0, 21)]
animate(frames, xmin=-1, xmax=1, ymin=-1, ymax=1, zmin=-1, zmax=1)
︡49e4df40-d37a-4df0-a8bf-bec19651ae39︡{"file":{"filename":"/home/user/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_19_23gy5.webm","show":true,"text":null,"url":"/a6c85e17-12ac-4736-87a3-40110ceaa2db/raw/.sage/temp/project-a6c85e17-12ac-4736-87a3-40110ceaa2db/762/tmp_19_23gy5.webm"},"once":false}︡{"done":true}
︠63b8e20b-33a7-4c03-a58b-770447176336s︠

frames = [order for order in range(7)]
frames
︡2937fa28-fff7-4634-a0a9-278b3b084e90︡{"stdout":"[0, 1, 2, 3, 4, 5, 6]\n"}︡{"done":true}
︠31bea607-ce3f-45c7-acce-a86367b74b68s︠
frames = [int(order/4) for order in range(28)]
frames
︡6dce0005-49ce-43f5-a04e-4d42c0c4a241︡{"stdout":"[0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6]\n"}︡{"done":true}









