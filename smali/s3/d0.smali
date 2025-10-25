.class public final synthetic Ls3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f0$g;


# instance fields
.field public final synthetic a:Lb3/x1;


# direct methods
.method public synthetic constructor <init>(Lb3/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/d0;->a:Lb3/x1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/d0;->a:Lb3/x1;

    check-cast p1, Ls3/s;

    invoke-static {v0, p1}, Ls3/f0;->c(Lb3/x1;Ls3/s;)I

    move-result p1

    return p1
.end method
