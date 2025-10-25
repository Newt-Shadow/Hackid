package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
/* loaded from: classes.dex */
abstract class v {
    private static int a(p pVar, boolean z10, boolean z11) {
        if (z11) {
            if (z10) {
                return pVar.getPopEnterAnim();
            }
            return pVar.getPopExitAnim();
        } else if (z10) {
            return pVar.getEnterAnim();
        } else {
            return pVar.getExitAnim();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(Context context, p pVar, boolean z10, boolean z11) {
        int nextTransition = pVar.getNextTransition();
        int a10 = a(pVar, z10, z11);
        boolean z12 = false;
        pVar.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = pVar.mContainer;
        if (viewGroup != null && viewGroup.getTag(s0.b.f29228c) != null) {
            pVar.mContainer.setTag(s0.b.f29228c, null);
        }
        ViewGroup viewGroup2 = pVar.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = pVar.onCreateAnimation(nextTransition, z10, a10);
        if (onCreateAnimation != null) {
            return new a(onCreateAnimation);
        }
        Animator onCreateAnimator = pVar.onCreateAnimator(nextTransition, z10, a10);
        if (onCreateAnimator != null) {
            return new a(onCreateAnimator);
        }
        if (a10 == 0 && nextTransition != 0) {
            a10 = d(context, nextTransition, z10);
        }
        if (a10 != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(a10));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, a10);
                    if (loadAnimation != null) {
                        return new a(loadAnimation);
                    }
                    z12 = true;
                } catch (Resources.NotFoundException e10) {
                    throw e10;
                } catch (RuntimeException unused) {
                }
            }
            if (!z12) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, a10);
                    if (loadAnimator != null) {
                        return new a(loadAnimator);
                    }
                } catch (RuntimeException e11) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, a10);
                        if (loadAnimation2 != null) {
                            return new a(loadAnimation2);
                        }
                    } else {
                        throw e11;
                    }
                }
            }
        }
        return null;
    }

    private static int c(Context context, int i10) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(16973825, new int[]{i10});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private static int d(Context context, int i10, boolean z10) {
        if (i10 != 4097) {
            if (i10 != 8194) {
                if (i10 != 8197) {
                    if (i10 != 4099) {
                        if (i10 != 4100) {
                            return -1;
                        }
                        if (z10) {
                            return c(context, 16842936);
                        }
                        return c(context, 16842937);
                    } else if (z10) {
                        return s0.a.f29222c;
                    } else {
                        return s0.a.f29223d;
                    }
                } else if (z10) {
                    return c(context, 16842938);
                } else {
                    return c(context, 16842939);
                }
            } else if (z10) {
                return s0.a.f29220a;
            } else {
                return s0.a.f29221b;
            }
        } else if (z10) {
            return s0.a.f29224e;
        } else {
            return s0.a.f29225f;
        }
    }

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Animation f2864a;

        /* renamed from: b  reason: collision with root package name */
        public final AnimatorSet f2865b;

        a(Animation animation) {
            this.f2864a = animation;
            this.f2865b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        a(Animator animator) {
            this.f2864a = null;
            AnimatorSet animatorSet = new AnimatorSet();
            this.f2865b = animatorSet;
            animatorSet.play(animator);
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* loaded from: classes.dex */
    static class b extends AnimationSet implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f2866a;

        /* renamed from: b  reason: collision with root package name */
        private final View f2867b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2868c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2869d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2870e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2870e = true;
            this.f2866a = viewGroup;
            this.f2867b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation) {
            this.f2870e = true;
            if (this.f2868c) {
                return !this.f2869d;
            }
            if (!super.getTransformation(j10, transformation)) {
                this.f2868c = true;
                d0.k0.a(this.f2866a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2868c && this.f2870e) {
                this.f2870e = false;
                this.f2866a.post(this);
                return;
            }
            this.f2866a.endViewTransition(this.f2867b);
            this.f2869d = true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation, float f10) {
            this.f2870e = true;
            if (this.f2868c) {
                return !this.f2869d;
            }
            if (!super.getTransformation(j10, transformation, f10)) {
                this.f2868c = true;
                d0.k0.a(this.f2866a, this);
            }
            return true;
        }
    }
}
