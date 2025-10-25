.class public final Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowMultiple:Ljava/lang/Boolean;

.field private limit:Ljava/lang/Long;

.field private usePhotoPicker:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->allowMultiple:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->setAllowMultiple(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->usePhotoPicker:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->setUsePhotoPicker(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->limit:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->setLimit(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setAllowMultiple(Ljava/lang/Boolean;)Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->allowMultiple:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLimit(Ljava/lang/Long;)Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->limit:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUsePhotoPicker(Ljava/lang/Boolean;)Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions$Builder;->usePhotoPicker:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method
