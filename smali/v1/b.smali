.class public final synthetic Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc0/a;


# direct methods
.method public synthetic constructor <init>(Lc0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/b;->a:Lc0/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/b;->a:Lc0/a;

    invoke-static {v0}, Lv1/c;->c(Lc0/a;)V

    return-void
.end method
