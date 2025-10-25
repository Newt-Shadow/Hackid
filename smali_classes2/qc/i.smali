.class public final synthetic Lqc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lqc/m;


# direct methods
.method public synthetic constructor <init>(Lqc/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/i;->a:Lqc/m;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/i;->a:Lqc/m;

    invoke-static {v0}, Lqc/m;->f(Lqc/m;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
