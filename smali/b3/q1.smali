.class public final synthetic Lb3/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb3/q1;->a:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/q1;->a:Z

    check-cast p1, Lb3/m3$d;

    invoke-static {v0, p1}, Lb3/g1$c;->I(ZLb3/m3$d;)V

    return-void
.end method
