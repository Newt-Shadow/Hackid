.class public final synthetic Lrf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lrf/s;


# direct methods
.method public synthetic constructor <init>(Lrf/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/q;->a:Lrf/s;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/q;->a:Lrf/s;

    invoke-static {v0}, Lrf/s;->b(Lrf/s;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
