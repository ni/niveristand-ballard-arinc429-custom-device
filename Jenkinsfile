#!/usr/bin/env groovy
//Leave the above line alone.  It identifies this as a groovy script.
@Library('vs-build-tools') _

List<String> lvVersions = ['2020']

diffPipeline(lvVersions[0])
ni.vsbuild.PipelineExecutor.execute(this, 'vs_cd_build', lvVersions)
