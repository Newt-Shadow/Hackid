.class final Lfa/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final b:Lfa/d0$c;


# direct methods
.method constructor <init>(Lfa/d0$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/d0$a;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lfa/d0$a;->b:Lfa/d0$c;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 1
    iget-boolean p2, p0, Lfa/d0$a;->a:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_4

    .line 5
    .line 6
    const/16 p2, 0x2644

    .line 7
    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lfa/d0$a;->a:Z

    .line 13
    .line 14
    array-length p2, p3

    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    aget p2, p3, v0

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    array-length p2, p3

    .line 23
    if-le p2, p1, :cond_2

    .line 24
    .line 25
    aget p2, p3, p1

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lfa/d0$a;->b:Lfa/d0$c;

    .line 30
    .line 31
    const-string p3, "AudioAccessDenied"

    .line 32
    .line 33
    const-string v0, "Audio access permission was denied."

    .line 34
    .line 35
    invoke-interface {p2, p3, v0}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p2, p0, Lfa/d0$a;->b:Lfa/d0$c;

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-interface {p2, p3, p3}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    iget-object p2, p0, Lfa/d0$a;->b:Lfa/d0$c;

    .line 47
    .line 48
    const-string p3, "CameraAccessDenied"

    .line 49
    .line 50
    const-string v0, "Camera access permission was denied."

    .line 51
    .line 52
    invoke-interface {p2, p3, v0}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return p1

    .line 56
    :cond_4
    :goto_2
    return v0
.end method
