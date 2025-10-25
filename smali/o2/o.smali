.class public abstract Lo2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/o$a;,
        Lo2/o$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo2/o$a;
    .locals 1

    .line 1
    new-instance v0, Lo2/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lo2/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Lo2/a;
.end method

.method public abstract c()Lo2/o$b;
.end method
