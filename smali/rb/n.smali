.class public final synthetic Lrb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lrb/o;


# direct methods
.method public synthetic constructor <init>(Lrb/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/n;->a:Lrb/o;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrb/n;->a:Lrb/o;

    invoke-static {v0}, Lrb/o;->g(Lrb/o;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
