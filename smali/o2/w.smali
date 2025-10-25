.class public abstract Lo2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/w$a;,
        Lo2/w$b;,
        Lo2/w$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo2/w$a;
    .locals 1

    .line 1
    new-instance v0, Lo2/m$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lo2/m$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Lo2/w$b;
.end method

.method public abstract c()Lo2/w$c;
.end method
