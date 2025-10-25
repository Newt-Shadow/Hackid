.class public final synthetic Lme/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lme/e;


# direct methods
.method public synthetic constructor <init>(Lme/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/c;->a:Lme/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/c;->a:Lme/e;

    invoke-static {v0}, Lme/e;->b(Lme/e;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
