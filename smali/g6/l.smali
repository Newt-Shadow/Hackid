.class abstract Lg6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg6/l;->a:Z

    return-void
.end method


# virtual methods
.method protected final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg6/l;->a:Z

    return v0
.end method

.method final c(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg6/l;->a:Z

    return-void
.end method
