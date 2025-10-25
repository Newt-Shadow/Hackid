.class Lio/flutter/plugin/platform/VirtualDisplayController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/VirtualDisplayController$OneTimeOnDrawListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "VirtualDisplayController"

.field private static callback:Landroid/hardware/display/VirtualDisplay$Callback;


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private final context:Landroid/content/Context;

.field private final densityDpi:I

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

.field private final renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

.field private final viewId:I

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugin/platform/VirtualDisplayController$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugin/platform/VirtualDisplayController$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 7
    .line 8
    iput-object p5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 9
    .line 10
    iput-object p6, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 11
    .line 12
    iput p7, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    .line 13
    .line 14
    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 25
    .line 26
    iput p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 27
    .line 28
    new-instance p3, Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 29
    .line 30
    iget-object p5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 31
    .line 32
    invoke-virtual {p5}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v0, p3

    .line 37
    move-object v1, p1

    .line 38
    move-object v3, p4

    .line 39
    move-object v4, p2

    .line 40
    move v5, p7

    .line 41
    move-object v6, p6

    .line 42
    invoke-direct/range {v0 .. v6}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;ILandroid/view/View$OnFocusChangeListener;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static create(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/VirtualDisplayController;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_2

    .line 3
    .line 4
    if-nez p5, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "display"

    .line 8
    .line 9
    move-object v10, p0

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface/range {p3 .. p5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "flutter-vd#"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move/from16 v11, p6

    .line 39
    .line 40
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 48
    .line 49
    invoke-interface {p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sget-object v8, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v2, v3

    .line 57
    move/from16 v3, p4

    .line 58
    .line 59
    move/from16 v4, p5

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_1
    new-instance v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 69
    .line 70
    move-object v2, v0

    .line 71
    move-object v3, p0

    .line 72
    move-object v4, p1

    .line 73
    move-object v6, p2

    .line 74
    move-object v7, p3

    .line 75
    move-object/from16 v8, p8

    .line 76
    .line 77
    move/from16 v9, p6

    .line 78
    .line 79
    move-object/from16 v10, p7

    .line 80
    .line 81
    invoke-direct/range {v2 .. v10}, Lio/flutter/plugin/platform/VirtualDisplayController;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-object v0
.end method

.method private resize31(Landroid/view/View;IILjava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 2
    .line 3
    invoke-interface {v0, p2, p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 7
    .line 8
    iget v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3, v1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 14
    .line 15
    iget-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 16
    .line 17
    invoke-interface {p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p2, p3}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 p2, 0x0

    .line 25
    .line 26
    invoke-virtual {p1, p4, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 17
    .line 18
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->release()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getRenderTargetHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getRenderTargetWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method onFlutterViewAttached(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method onFlutterViewDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewDetached()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionLocked()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionUnlocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionUnlocked()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public resetSurface()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "display"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "flutter-vd#"

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v4, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 65
    .line 66
    iget-object v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 67
    .line 68
    invoke-interface {v5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sget-object v7, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 80
    .line 81
    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 82
    .line 83
    iget-object v5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-object v7, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 92
    .line 93
    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 94
    .line 95
    move-object v4, v0

    .line 96
    move-object v8, v9

    .line 97
    move-object v9, v1

    .line 98
    invoke-direct/range {v4 .. v10}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Landroid/view/View$OnFocusChangeListener;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 110
    .line 111
    return-void
.end method

.method public resize(IILjava/lang/Runnable;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v3, p1

    .line 3
    move v4, p2

    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ne v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v4, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-virtual {v1, v10, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x1f

    .line 31
    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0, v1, p1, p2, v10}, Lio/flutter/plugin/platform/VirtualDisplayController;->resize31(Landroid/view/View;IILjava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    iget-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 51
    .line 52
    invoke-virtual {v1}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    iget-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 68
    .line 69
    const-string v2, "display"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 76
    .line 77
    iget-object v2, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 78
    .line 79
    invoke-interface {v2, p1, p2}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "flutter-vd#"

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v5, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    .line 94
    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget v5, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 103
    .line 104
    iget-object v6, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 105
    .line 106
    invoke-interface {v6}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    sget-object v8, Lio/flutter/plugin/platform/VirtualDisplayController;->callback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    move v3, p1

    .line 114
    move v4, p2

    .line 115
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 120
    .line 121
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v2, Lio/flutter/plugin/platform/VirtualDisplayController$2;

    .line 126
    .line 127
    invoke-direct {v2, p0, v1, v10}, Lio/flutter/plugin/platform/VirtualDisplayController$2;-><init>(Lio/flutter/plugin/platform/VirtualDisplayController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 134
    .line 135
    iget-object v3, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v2, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iget-object v5, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 144
    .line 145
    iget-object v7, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 146
    .line 147
    move-object v2, v1

    .line 148
    move-object v6, v12

    .line 149
    move v8, v11

    .line 150
    invoke-direct/range {v2 .. v8}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;Landroid/view/View$OnFocusChangeListener;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 154
    .line 155
    .line 156
    iget-object v2, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 159
    .line 160
    .line 161
    iput-object v1, v0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 162
    .line 163
    return-void
.end method
