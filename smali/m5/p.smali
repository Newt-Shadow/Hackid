.class public Lm5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/p$a;
    }
.end annotation


# instance fields
.field public final a:Lm5/o;

.field public final b:Lm5/w;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Lm5/o;Lm5/w;Ljava/lang/Runnable;Lm5/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/p;->a:Lm5/o;

    iput-object p2, p0, Lm5/p;->b:Lm5/w;

    iput-object p3, p0, Lm5/p;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lm5/p$a;
    .locals 2

    .line 1
    new-instance v0, Lm5/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/p$a;-><init>(Lm5/z0;)V

    return-object v0
.end method
